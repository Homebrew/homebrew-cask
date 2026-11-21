cask "godot" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos.universal", linux: "linux.#{arch}"

  version "4.7.2"
  sha256 arm:          "c58a24e31d720be9d62f60cb5627c4e695fb72f21b0cfe1bc9ccaa9a3b3ba63e",
         intel:        "c58a24e31d720be9d62f60cb5627c4e695fb72f21b0cfe1bc9ccaa9a3b3ba63e",
         arm64_linux:  "5dd0d86405cf7e8adf79fb6377b38ba682a2846cb378ffe5364f38c01ad29b9d",
         x86_64_linux: "cadd3204e728a35d3f13adb7fd0d7902636b79f6b95c40c265eb73b6c35329e4"

  on_macos do
    app "Godot.app"
    binary "#{appdir}/Godot.app/Contents/MacOS/Godot", target: "godot"

    uninstall quit: "org.godotengine.godot"

    zap trash: [
      "~/Library/Application Support/Godot",
      "~/Library/Caches/Godot",
      "~/Library/Saved Application State/org.godotengine.godot.savedState",
    ]
  end
  on_linux do
    binary "Godot_v#{version}-stable_linux.#{arch}", target: "godot"
    artifact "org.godotengine.Godot.desktop",
             target: "#{Dir.home}/.local/share/applications/org.godotengine.Godot.desktop"

    preflight_steps do
      # The download is a bare executable, so generate a desktop entry for it.
      # Launchers may not have Homebrew's bin directory on their PATH.
      write_file "org.godotengine.Godot.desktop", <<~EOS
        [Desktop Entry]
        Name=Godot Engine
        GenericName=Libre game engine
        Comment=Multi-platform 2D and 3D game engine with a feature-rich editor
        Keywords=game development;development;IDE;game engine;
        Exec={{HOMEBREW_PREFIX}}/bin/godot %f
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

  url "https://github.com/godotengine/godot/releases/download/#{version}-stable/Godot_v#{version}-stable_#{os}.zip"
  name "Godot Engine"
  desc "2D and 3D game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
    strategy :github_latest
  end

  conflicts_with cask: "godot@3"
end
