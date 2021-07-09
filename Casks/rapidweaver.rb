cask "rapidweaver" do
  version "8.8.3,20877"
  sha256 "ffc901685bb1e60a74ef9c6925626c96c7867b613199f2b6d234e2f847d0b4d9"

  url "https://github.com/realmacsoftware/RapidWeaver#{version.major}-releases/releases/download/#{version.before_comma}-%28#{version.after_comma}%29/RapidWeaver#{version.major}.zip",
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
