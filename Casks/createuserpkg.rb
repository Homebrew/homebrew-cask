cask "createuserpkg" do
  version "1.2.4"
  sha256 "4bac91af9d8fb2e34c036964c6f9bf49a8f19f8e994b30e2900a0ddbebef246f"

  url "https://magervalp.github.io/CreateUserPkg/Distributions/CreateUserPkg-#{version}.dmg"
  name "CreateUserPkg"
  homepage "https://magervalp.github.io/CreateUserPkg/"

  livecheck do
    url "https://github.com/MagerValp/CreateUserPkg"
    strategy :git
  end

  app "CreateUserPkg.app"
end
