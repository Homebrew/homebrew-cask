cask "arrayfire" do
  version "3.6.4"
  sha256 "7ca7f9280fd7bda18fa78275c9d4ce2ea3885307afb29e5b8793711394fd9995"

  # arrayfire.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://arrayfire.s3.amazonaws.com/#{version}/ArrayFire-v#{version}_OSX_x86_64.pkg"
  name "ArrayFire"
  homepage "https://arrayfire.com/"

  pkg "ArrayFire-v#{version}_OSX_x86_64.pkg"

  uninstall pkgutil: "com.ArrayFire.ArrayFire.*"
end
