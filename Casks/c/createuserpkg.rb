cask "createuserpkg" do
  version "1.2.4"
  sha256 "4bac91af9d8fb2e34c036964c6f9bf49a8f19f8e994b30e2900a0ddbebef246f"

  url "https://magervalp.github.io/CreateUserPkg/Distributions/CreateUserPkg-#{version}.dmg"
  name "CreateUserPkg"
  desc "Create packages to deploy user accounts"
  homepage "https://magervalp.github.io/CreateUserPkg/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "CreateUserPkg.app"
end
