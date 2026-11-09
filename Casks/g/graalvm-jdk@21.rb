cask "graalvm-jdk@21" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "21.0.12,7"
    sha256 "a98948c3a1ad037fe2dde5c80b06b214a5f80c120d8fc2453d155508cf677beb"
  end
  on_intel do
    version "21.0.9,7"
    sha256 "aaf06b193ea1a05662d4a5a05e899eb51f8881eee4319db044707e79dcabbb32"
  end

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  # Newer Oracle GraalVM for JDK 21 releases are under the OTN licence and need
  # an Oracle account to download.
  deprecate! date: "2026-11-08", because: :no_longer_meets_criteria

  depends_on :macos

  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  zap :not_required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
    <<~EOS
      According to https://www.graalvm.org/jdk21/docs/getting-started/macos/
        This app will not work with quarantine attributes.
    EOS
  end
end
