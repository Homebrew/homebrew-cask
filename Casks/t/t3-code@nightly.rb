cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29-nightly.20260707.751"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  on_macos do
    sha256 arm:   "7c68cd15c285842746df24d17785ace2becb35b947bffb0bac8f32d1503bc12e",
           intel: "57d53588bd496890220bf6d807eca5d7f3daef23f0db33066d7e77313345f3d1"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Nightly).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "e87d18ddf8d68bea82f0cd48ad6035ec5ce99924348381fe9f0c990afef31878"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code Nightly.AppImage"
  end
end
