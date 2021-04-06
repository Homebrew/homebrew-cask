cask "inform" do
  version "6M62"
  sha256 "202420d1b0ad16ea56327446b0920978be05befafa3ed6b71ac7b2dd1f42c36a"

  url "http://inform7.com/apps/#{version}/I7-#{version}-OSX-Interim.dmg"
  name "Inform"
  desc "Writing system for interactive fiction based on natural language"
  homepage "http://inform7.com/"

  livecheck do
    url "http://inform7.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/I7-(\d+M\d+)-OSX-Interim\.dmg}i)
  end

  app "Inform.app"
end
