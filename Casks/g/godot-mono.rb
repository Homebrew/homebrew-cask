cask "godot-mono" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos.universal", linux: "linux_#{arch}"

  version "4.7.2"
  sha256 arm:          "8af3977b60d2c59802f7c8ff1914b3ca02a5e294f7381fc1104ee777e33cbbd8",
         intel:        "8af3977b60d2c59802f7c8ff1914b3ca02a5e294f7381fc1104ee777e33cbbd8",
         arm64_linux:  "0dc8ad63feacc6c19d7cb5c89ae828085b0ac3fa8039bc816a08a0537744e523",
         x86_64_linux: "129f82db7bafd54ae14bb5bb284041c73860e8c7a009a3a026ca5e946cbff247"

  on_macos do
    depends_on cask: "dotnet-sdk"

    app "Godot_mono.app"
    command_wrapper "godot-mono",
                    executable: "#{appdir}/Godot_mono.app/Contents/MacOS/Godot"

    uninstall quit: "org.godotengine.godot"

    zap trash: [
      "~/Library/Application Support/Godot",
      "~/Library/Caches/Godot",
      "~/Library/Saved Application State/org.godotengine.godot.savedState",
    ]
  end
  on_linux do
    depends_on formula: "dotnet"

    # The editor must stay next to its `GodotSharp` directory, and needs to find
    # the .NET SDK when launched from outside a Homebrew-aware shell.
    command_wrapper "godot-mono",
                    executable: "#{staged_path}/Godot_v#{version}-stable_mono_linux_#{arch}/" \
                                "Godot_v#{version}-stable_mono_linux.#{arch}",
                    env:        {
                      "DOTNET_ROOT" => "#{HOMEBREW_PREFIX}/opt/dotnet/libexec",
                      "PATH"        => "#{HOMEBREW_PREFIX}/opt/dotnet/bin:$PATH",
                    }
    artifact "org.godotengine.Godot-mono.desktop",
             target: "#{Dir.home}/.local/share/applications/org.godotengine.Godot-mono.desktop"

    preflight_steps do
      # The download has no desktop entry, so generate one.
      # Launchers may not have Homebrew's bin directory on their PATH.
      write_file "org.godotengine.Godot-mono.desktop", <<~EOS
        [Desktop Entry]
        Name=Godot Engine (.NET)
        GenericName=Libre game engine
        Comment=Multi-platform 2D and 3D game engine with C# support
        Keywords=game development;development;IDE;game engine;C#;
        Exec={{HOMEBREW_PREFIX}}/bin/godot-mono %f
        Icon=godot
        Terminal=false
        Type=Application
        MimeType=application/x-godot-project;
        Categories=Development;IDE;
        StartupWMClass=Godot
      EOS
      mkdir_p ".local/share/applications", base: :home
    end

    zap trash: [
      "~/.cache/godot",
      "~/.config/godot",
      "~/.local/share/godot",
    ]
  end

  url "https://github.com/godotengine/godot/releases/download/#{version}-stable/Godot_v#{version}-stable_mono_#{os}.zip"
  name "Godot Engine"
  desc "C# scripting capable version of Godot game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
    strategy :github_latest
  end
end
