cask "password-gorilla" do
  version "15373"
  sha256 "51c443fb58a3628c2a45bd3160096abb9b017f33e6a08628636168f996ad0414"

  url "http://gorilla.dp100.com/downloads/gorilla.mac.#{version}.zip",
      verified: "gorilla.dp100.com/"
  name "Password Gorilla"
  desc "Password database manager"
  homepage "https://github.com/zdia/gorilla"

  livecheck do
    url "http://gorilla.dp100.com/downloads/"
    regex(/gorilla\.mac\.(\d+)\.zip/i)
  end

  app "Password Gorilla.app"
end
