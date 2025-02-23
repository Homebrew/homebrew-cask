cask "leader-key" do
  version "1.9.0,89"
  sha256 "b1e75d7ba88933a82dc7829d1a073c81941903bdbe36c92cd572fe637ecae3b9"

  url "https://leader-key-updates.s3.amazonaws.com/Leader%20Key.b#{version.csv.second}.zip",
      verified: "leader-key-updates.s3.amazonaws.com/"
  name "Leader Key"
  desc "Application launcher"
  homepage "https://github.com/mikker/LeaderKey.app"

  livecheck do
    url "https://leader-key-updates.s3.amazonaws.com/appcast.xml"
    regex(%r{/Leader%20Key[._-]b(\d+(?:\.\d+)*)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: "~/Library/Application Support/Leader Key"
end
