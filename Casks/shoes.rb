cask "shoes" do
  version "3.3.7"
  sha256 "9d2d57d8e64a8befc08848939ac0995e2367aadee3aeb24608ebcc8d5c7bb93d"

  url "https://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.10.tgz",
      verified: "shoes.mvmanila.com/public/shoes/"
  name "Shoes"
  homepage "http://shoesrb.com/"

  livecheck do
    url "http://shoesrb.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/shoes-(\d+(?:\.\d+)*)-osx-10\.10\.tgz}i)
  end

  depends_on macos: ">= :yosemite"

  app "Shoes.app"
end
