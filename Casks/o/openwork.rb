cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.28"
  sha256 arm:          "87e08f3e372f35d567a424e2ce36de6c7ffddac9d810f160e76d178957396935",
         intel:        "f379a53d5960641735d3c9ce395ec0de66884ab23acd8267adc59177bc6ad591",
         arm64_linux:  "297f77f823f307d0895be1cf9325b11ee5307dc885c891ba0451debd2dce1e17",
         x86_64_linux: "fddff0603a18b6ee050c6c0c61f03650a865e2e18f6428f27de639f7bf2c3843"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
