cask "cinderella" do
  version "3.0b.2004"
  sha256 "a06f47c23d907085c3102886748a8f6d178d92b774e75bb04e3bb2611d5806bd"

  url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  livecheck do
    url "https://beta.cinderella.de/"
    regex(/href="Cinderella-(\d+.\d+b?.+)\.dmg"/i)
  end

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/cinderella2-global.properties",
  ]
end
