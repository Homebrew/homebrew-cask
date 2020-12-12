cask "shoes" do
  version "3.3.7"
  sha256 "9d2d57d8e64a8befc08848939ac0995e2367aadee3aeb24608ebcc8d5c7bb93d"

  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.10.tgz",
      verified: "shoes.mvmanila.com/public/shoes/"
  appcast "http://shoesrb.com/downloads/"
  name "Shoes"
  homepage "http://shoesrb.com/"

  depends_on macos: ">= :yosemite"

  app "Shoes.app"
end
