cask "local" do
  arch arm: "mac-arm64", intel: "mac"

  version "6.7.1,6369"
  sha256  arm:   "0cb331e420351bd5789681ee0cdd05c9438578108b6b95e4e055ea7487461b82",
          intel: "56f0c7ca3c6ccef87c09802b18af03feefdbe57dba32e80db745f00c082b6315"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
