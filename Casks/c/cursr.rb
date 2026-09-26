cask "cursr" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "-mac-#{arch}.dmg", linux: ".AppImage"

  version "1.7.4"
  sha256 arm:          "1403a29035fb386480231844e71476eefbd1aff874dfcb22afebd101a8587194",
         intel:        "ca7f6f2b5f52796085b0d6764e82e3c73458ac39d20387592691cdfab865dc23",
         x86_64_linux: "32d6ab61131723bfc11a211664fb66dacf5345951032b9f4fadfd23aa6885ede"

  on_macos do
    app "Cursr.app"

    zap trash: [
      "~/Library/Application Support/cursr",
      "~/Library/Preferences/com.bitgapp.cursr.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Cursr.AppImage"
  end

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr#{url_end}"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
