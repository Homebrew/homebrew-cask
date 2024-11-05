cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "9.0.0,10"
  sha256 arm:   "d1e30411eacf88e313e2200f1c5a16c612094fe54c004ca8dec6514a39c91e29",
         intel: "64d9899a57355a484fe3cc9d2854c46366c7e961bcb90d0cd60b91140fab540f"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.csv.second}/binaries/jmc-#{version.csv.first}_macos-#{arch}.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/binaries/jmc[._-]v?(\d+(?:\.\d+)*)[._-]macos[._-]#{arch}\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "jmc-#{version.csv.first}_macos-#{arch}/JDK Mission Control.app"

  zap trash: [
    "~/.jmc",
    "~/Library/Preferences/org.openjdk.jmc.plist",
  ]

  caveats do
    depends_on_java "17"
  end
end
