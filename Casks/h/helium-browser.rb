cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.18.3.1"
  sha256 arm:          "49dca5ee476df8528d88c7d111c822f0eb4a1c0e487502eacd486477ea77aa05",
         intel:        "d8861597e6901519d68a971c75878248f0dc73bfef912f4d4668872d5d0d7c9d",
         arm64_linux:  "4225efc2df50e63bddf83db700cf2668a532f68d985604c121ea0be44856715d",
         x86_64_linux: "c43ae14c2ab71555b3fe40bd025df004f70bc4795a961a1a3a56979fa1b8b980"

  on_macos do
    depends_on macos: :ventura

    app "Helium.app"

    zap trash: [
      "~/Library/Application Support/net.imput.helium",
      "~/Library/Caches/net.imput.helium",
      "~/Library/HTTPStorages/net.imput.helium",
      "~/Library/Preferences/net.imput.helium.plist",
    ]
  end
  on_linux do
    app_image "helium-#{version}-#{arch}.AppImage", target: "Helium.AppImage"
  end

  url "https://github.com/imputnet/helium-#{os}/releases/download/#{version}/helium#{file_sep}#{version}#{file_sep}#{arch}#{url_end}"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
