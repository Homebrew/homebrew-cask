cask "ideamaker" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "apple_silicon", intel: "mac"

  version "5.2.2.8570"
  sha256 arm:   "012ac416340d0e78bfb732cac0def2e9d8c1df7b4e056da165e35d20f3769d92",
         intel: "7db657ef7c3d76a4a18c0c7f52d41d86832fe36cd0b39c90732efb739d26faa7"

  url "https://downcdn.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://api.raise3d.com/ideamakerio-v1.1/hq/ofpVersionControl/find", post_json: {}
    regex(/install[._-]ideaMaker[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("data", "release_version", "#{livecheck_arch}_url")&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :catalina"

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
