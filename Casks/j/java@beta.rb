cask "java@beta" do
  arch arm: "aarch64", intel: "x64"

  version "23,28"
  sha256 arm:   "8ba1faba4fc1a050d35eac9069f1b11fa7ebb7e273daeeae26ed96dcfcfa0f9a",
         intel: "d2c31b1715e4a4a77fec3375ba5e42232a17c88061a709ea63f5d3fee6c25e5c"

  url "https://download.java.net/java/early_access/jdk#{version.major}/#{version.csv.second}/GPL/openjdk-#{version.csv.first}-ea+#{version.csv.second}_macos-#{arch}_bin.tar.gz"
  name "OpenJDK Early Access Java Development Kit"
  desc "Early access development kit for the Java programming language"
  homepage "https://jdk.java.net/"

  livecheck do
    url "https://jdk.java.net/#{version.major}/"
    regex(%r{href=.*?/GPL/openjdk-(\d+)-ea\+(\d+)_macos-#{arch}_bin\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "jdk-#{version.csv.first}.jdk", target: "/Library/Java/JavaVirtualMachines/openjdk-#{version.csv.first}.jdk"

  zap trash: "~/Library/Saved Application State/net.java.openjdk*.savedState"
end
