cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  version "21.0.7,8"
  sha256 arm:   "5c665f8c4a9c10352023fdbee367784cd8dfc22ffda0e625cd8c823c83b4345d",
         intel: "24094515078a83158bc7b76f73497d52127fdfe32a96665803a52285edd2c08c"

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
