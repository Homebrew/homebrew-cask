cask "godot-mono" do
  version "4.4.1"
  sha256 "325be823284ce491487a69b354dbb481875857bee84a0b1d00c2552cea92c0a7"

  url "https://github.com/godotengine/godot/releases/download/#{version}-stable/Godot_v#{version}-stable_mono_macos.universal.zip",
      verified: "github.com/godotengine/godot/"
  name "Godot Engine"
  desc "C# scripting capable version of Godot game engine"
  homepage "https://godotengine.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]stable$/i)
    strategy :github_latest
  end

  depends_on cask: "dotnet-sdk"
  depends_on macos: ">= :sierra"

  app "Godot_mono.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/godot-mono.wrapper.sh"
  binary shimscript, target: "godot-mono"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Godot_mono.app/Contents/MacOS/Godot' "$@"
    EOS
  end

  uninstall quit: "org.godotengine.godot"

  zap trash: [
    "~/Library/Application Support/Godot",
    "~/Library/Caches/Godot",
    "~/Library/Saved Application State/org.godotengine.godot.savedState",
  ]
end
