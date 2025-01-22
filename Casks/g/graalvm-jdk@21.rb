cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.6,8"
  sha256 arm:   "3ee94ee274cef7d0fb79fb79a35c4bc11df0854434f88b18507da722f5962464",
         intel: "a4e5ce59a63e8325c3eba2d2a7091fd99927b08e04eb8a90f35e0b358bc9dee7"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://docs.oracle.com/en/graalvm/jdk/21/docs/release-notes/"
    regex(/<strong>v?(\d+(?:\.\d+)+)\+(\d+)[ "<]/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
