cask "scratch-link" do
  version "1.3.57"
  sha256 "58e9e3a5745bc65e6920bed934eb952e29b184022a9c6d8942dfcdf13b644c9d"

  # downloads.scratch.mit.edu was verified as official when first introduced to the cask
  url "https://downloads.scratch.mit.edu/link/mac.zip"
  name "Scratch Link"
  homepage "https://github.com/LLK/scratch-link"

  pkg "scratch-link-#{version}.pkg"

  uninstall pkgutil: "edu.mit.scratch.scratch-link"
end
