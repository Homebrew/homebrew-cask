cask "qdesktop" do
  version "0.1.2,6"
  sha256 "80091362a4350baf14aa0d78eae0078ee974f68b9fa440a75569a4e591d3813a"

  url "https://github.com/qvacua/qdesktop/releases/download/v#{version.before_comma}-#{version.after_comma}/Qdesktop-#{version.before_comma}.zip"
  name "Qdesktop"
  desc "App to set a website as the desktop background"
  homepage "https://github.com/qvacua/qdesktop"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/^v?(\d+(?:\.\d+)*)-(\d+)$/i)
        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Qdesktop.app"
end
