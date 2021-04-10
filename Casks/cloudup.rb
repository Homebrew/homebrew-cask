cask "cloudup" do
  version "1.15.2"
  sha256 :no_check

  url "https://updates.cloudup.com/update?os=osx&app=Cloudup&format=zip&channel=release"
  name "Cloudup"
  homepage "https://cloudup.com/download"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Cloudup.app"
end
