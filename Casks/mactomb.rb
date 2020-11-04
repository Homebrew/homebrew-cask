cask "mactomb" do
  version :latest
  sha256 :no_check # Updated in place

  # github.com/davinerd/MacTomb was verified as official when first introduced to the cask
  url "https://github.com/davinerd/MacTomb/archive/master.tar.gz"
  name "MacTomb"
  desc "Create and manage encrypted dmg files"
  homepage "https://www.dyne.org/software/mactomb/"

  binary "MacTomb-Master/mactomb.sh", target: "mactomb"
end
