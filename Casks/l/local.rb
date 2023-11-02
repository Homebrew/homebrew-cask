cask "local" do
  arch arm: "-arm64"

  version "8.0.2,6509"
  sha256  arm:   "1e4bab13e9d8e8f4fa7b0174a4b0a27f715dc848b2eed15cfdbe130e1f738bcc",
          intel: "c6cbad6559f036b7a02ab94b5e9b4e73fcc67706d151156d9692ce15f0e75961"

  url "https://cdn.localwp.com/releases-stable/#{version.csv.first}+#{version.csv.second}/local-#{version.csv.first}-mac#{arch}.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac#{arch}"
    regex(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
    strategy :header_match do |headers|
      match = headers["location"].match(regex)
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
