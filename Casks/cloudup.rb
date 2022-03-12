cask "cloudup" do
  version "1.15.4"
  sha256 :no_check

  url "https://updates.cloudup.com/update?os=osx&app=Cloudup&format=zip&channel=release"
  name "Cloudup"
  desc "Instantly and securely share anything"
  homepage "https://cloudup.com/download"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Cloudup.app"

  zap trash: [
    "~/Library/Application Scripts/com.cloudup.Cloudup.ShareExtension",
    "~/Library/Application Support/Cloudup",
    "~/Library/Caches/com.cloudup.Cloudup",
    "~/Library/Containers/com.cloudup.Cloudup.ShareExtension",
    "~/Library/HTTPStorages/com.cloudup.Cloudup",
    "~/Library/Preferences/com.cloudup.Cloudup.plist",
  ]
end
