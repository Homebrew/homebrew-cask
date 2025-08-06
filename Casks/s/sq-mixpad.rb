cask "sq-mixpad" do
  version "1.6.0,1.6,2025,02"
  sha256 "5e3e4d86c016ea1de457c78e89e0c5352e2a56e81fed2b32c3fb29c81d562243"

  url "https://www.allen-heath.com/content/uploads/#{version.csv.third}/#{version.csv.fourth}/SQ-MixPad-#{version.csv.second}-Mac-Installer.zip",
      user_agent: :browser
  name "SQ MixPad"
  desc "Remote control for Allen & Heath SQ audio consoles"
  homepage "https://www.allen-heath.com/hardware/sq/sq-mixpad/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/SQ[._-]MixPad[._-]v?(\d+(?:\.\d+)+)[._-]Mac[^>]+SQ\s*MixPad\s*v?(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[4]},#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "SQ MixPad #{version.csv.first}.app"

  zap trash: "~/Library/Preferences/com.allen-heath.SQ-MixPad*.plist"

  caveats do
    requires_rosetta
  end
end
