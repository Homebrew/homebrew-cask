cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "8.3.1,05"
  sha256 arm:   "41d5add99b24da77fc580ecf10d28a4843334faf2677af055d0d55cf379b2998",
         intel: "07fd19be68fe7357c745f0a87ffb860d7ac92ae4e94fce9f79e07ac375fb8576"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.csv.second}/binaries/jmc-#{version.csv.first}_macos-#{arch}.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/8"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/binaries/jmc[._-]v?(\d+(?:\.\d+)*)[._-]macos[._-]#{arch}\.tar\.gz}i)
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
    depends_on_java "11"
  end
end
