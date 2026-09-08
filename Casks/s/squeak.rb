cask "squeak" do
  version "6.1,23976"
  sha256 "375fa6abc1bf2d3b6a20b7c31cef7c5218d797adda42291cd80b0ca6d40d528c"

  url "https://files.squeak.org/#{version.csv.first}/Squeak#{version.csv.first}-#{version.csv.second}-64bit/Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.zip"
  name "Squeak"
  desc "Smalltalk programming system"
  homepage "https://squeak.org/"

  livecheck do
    url "https://squeak.org/downloads/"
    regex(%r{href=.*?/Squeak(\d+(?:\.\d+)*)-(\d+)-64bit-All-in-One\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :big_sur

  app "Squeak#{version.csv.first}-#{version.csv.second}-64bit-All-in-One.app"

  zap trash: "~/Library/Saved Application State/org.squeak.Squeak#{version.csv.first}.64.All-in-One.savedState"
end
