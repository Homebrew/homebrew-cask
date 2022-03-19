cask "rapidweaver" do
  version "8.9.3,20888"
  sha256 "cf739d2819de327ca77946d2348735aaad72451d85683f1facb606325e8cf740"

  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.csv.first}-%28#{version.csv.second}%29/RapidWeaver#{version.major}.zip",
      verified: "github.com/realmacsoftware/"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  livecheck do
    url "https://www.realmacsoftware.com/rapidweaver/releasenotes/"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\d+(?:\.\d+)+)-\((\d+)\)/RapidWeaver\d*\.zip}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "RapidWeaver #{version.major}.app"
end
