cask "graalvm-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.1,9"
  sha256 arm:   "875555f6063b4847b617504e8f8a36290a6726770be72388261f6118bcf28f81",
         intel: "35852ef7040be5e73d4b8f23481c4f70e4dcb088d302e28f6a88e6a4d47de2b9"

  url "https://download.oracle.com/graalvm/#{version.major}/archive/graalvm-jdk-#{version.csv.first}_macos-#{arch}_bin.tar.gz",
      verified: "download.oracle.com/"
  name "GraalVM Java Development Kit"
  desc "GraalVM from Oracle"
  homepage "https://www.graalvm.org/"

  livecheck do
    url "https://www.oracle.com/java/technologies/downloads/"
    regex(%r{/otn_software/java/jdk/(\d+(?:\.\d+)*)\+(\d+)/}i)
    strategy :page_match do |page, regex|
      major = page.scan(%r{href=.*?/technologies/javase-jdk(\d+)-doc-downloads\.html}i)
                  .max_by { |match| Version.new(match[0]) }
                  &.first
      next if major.blank?

      download_page = Homebrew::Livecheck::Strategy.page_content(
        "https://www.oracle.com/java/technologies/javase-jdk#{major}-doc-downloads.html",
      )
      next if (download_page_content = download_page[:content]).blank?

      download_page_content.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  no_autobump! because: :requires_manual_review

  artifact "graalvm-jdk-#{version.csv.first}+#{version.csv.second}.1", target: "/Library/Java/JavaVirtualMachines/graalvm-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/graal-free-license.html"
  end
end
