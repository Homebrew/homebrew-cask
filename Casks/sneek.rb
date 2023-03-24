cask "sneek" do
  version "2.0.19"
  sha256 :no_check

  url "https://s3-eu-west-1.amazonaws.com/cdn.sneek.io/installers/latest/Sneek.dmg",
      verified: "s3-eu-west-1.amazonaws.com/cdn.sneek.io/"
  name "Sneek"
  homepage "https://sneek.io/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Sneek.app"
end
