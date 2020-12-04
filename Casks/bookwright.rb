cask "bookwright" do
  version "2.1.0"
  sha256 "a33a9b3149a9105c4ec73fcabbbaf55d737e599e3aefe7ece32c2b82aad83075"

  url "https://software.blurb.com/bookwright_v#{version.major}/#{version}/BookWright.dmg"
  name "BookWright"
  desc "Software to design materials for print with blurb"
  homepage "https://www.blurb.com/bookwright"

  app "BookWright.app"
end
