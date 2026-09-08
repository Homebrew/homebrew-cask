cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "25.0.4"
    sha256 "0b79e23c133facbad2f7aa55a3b76d17bd59d2fa15e2735bb63391ace223fd13"

    livecheck do
      url "https://www.oracle.com/a/tech/docs/graalvm-downloads.json"
      strategy :json do |json|
        json.filter_map do |_, category|
          # Only check current Oracle GraalVM releases, not Enterprise or Innovation
          next if category["Title"] != "Oracle GraalVM"
          next if category["SubTitle"]&.include?("Innovation")

          category["Releases"]&.keys
        end.flatten
      end
    end
  end
  on_intel do
    version "25.0.1"
    sha256 "a762ca1d9a163e32790b9286f3af4c16369729ff27999d8dbab60d7be16cff2f"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  depends_on :macos

  # The archive contains a versioned directory with a numeric suffix that can't
  # be identified upstream, so we rename it something generic
  rename "graalvm-jdk-*", "graalvm-jdk"

  artifact "graalvm-jdk", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
