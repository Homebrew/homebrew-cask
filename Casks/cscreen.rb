cask "cscreen" do
  version "2012.09"
  sha256 "522348667b4ac13a3bd63afee5a9b796b97cb06f12f4e9cbb1943dd4c8bb0895"

  url "https://www.pyehouse.com/wp-content/uploads/#{version.major}/#{version.minor}/cscreenIntel.dmg"
  name "cscreen"
  desc "Command-line display management utility"
  homepage "https://www.pyehouse.com/cscreen/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d{4})/(\d{2})/cscreenIntel\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}" }
    end
  end

  binary "cscreen"
end
