cask "local" do
  version "6.1.5,5536"
  sha256 "0c08679e1df76ecf11e29163d9f1fd0e6232b84df5a3d799b98b204d32936e0c"

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)*)\+(\d+)/})
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
