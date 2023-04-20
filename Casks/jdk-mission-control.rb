cask "jdk-mission-control" do
  arch arm: "aarch64", intel: "x64"

  version "8.3.0,05"
  sha256 arm:   "0dbd05efe465c42b6b9ebdb5221c8e4e992ef23650b10a3009b7622167fc2dd7",
         intel: "aa35042cade725c8f6490f61819c0ee24802a1d47b93a1a18fd34924d2546bb7"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.csv.second}/binaries/jmc-#{version.csv.first}_osx-#{arch}.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/8"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/binaries/jmc[._-]v?(\d+(?:\.\d+)*)[._-]osx[._-]#{arch}\.tar\.gz}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "jmc-#{version.csv.first}_osx-#{arch}/JDK Mission Control.app"

  caveats do
    depends_on_java "11"
  end
end
