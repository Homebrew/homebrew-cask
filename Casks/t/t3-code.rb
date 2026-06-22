cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.27"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 arm:   "d14879a4ab5fec522e27fa6fbbbe07f0d6140bdd2b82edd2de9dc956f216aa6f",
           intel: "8d2f0cb9eed4a4acd4331cdf84b259c8387cf55d1fd3f2ed46b215fd8defbfe0"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Alpha).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "00b926ef04956c395947b4d655a8373516cfd64bc6250aa6a51d66999bd20805"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code.AppImage"
  end
end
