cask "rapidweaver" do
  version "8.9.2,20886"
  sha256 "bfd0c55e8a20ad6be602c1e0fe37a31814208c31f93ad76f400bd6d3673f1659"

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
