cask "ape" do
  version "3.1.8.1"
  sha256 :no_check

  url "https://jorgensen.biology.utah.edu/wayned/ape/Download/Mac/ApE_OSX_modern_current.dmg"
  name "ApE (A Plasmid Editor)"
  desc "Software for DNA sequence analysis and annotation"
  homepage "https://jorgensen.biology.utah.edu/wayned/ape/"

  livecheck do
    url :homepage
    regex(/latest\s*ApE\s*\(v?(\d+(?:\.\d+)+)[ ,<"]/i)
  end

  app "ApE.app"

  zap trash: "~/Library/Application Support/ApE"
end
