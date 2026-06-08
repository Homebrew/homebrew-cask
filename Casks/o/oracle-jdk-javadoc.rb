cask "oracle-jdk-javadoc" do
  version "26,35,c3cc523845074aa0af4f5e1e1ed4151d"
  sha256 "d88a5803b60ebf91f69cbbec79a96b681f97965bb61f8c930587ebf8c7970a80"

  url "https://download.oracle.com/otn_software/java/jdk/#{version.csv.first}+#{version.csv.second}/#{version.csv.third}/jdk-#{version.csv.first}_doc-all.zip",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit Documentation"
  desc "Documentation for the Oracle JDK"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url :homepage
    regex(%r{/(\d+(?:\.\d+)*)(?:\+|%2B)(\d+(?:\.\d+)*)/(\h+)/jdk[._-]v?(\d+(?:\.\d+)*)_doc-all\.zip}i)
    strategy :page_match do |page, regex|
      major = page.scan(%r{href=.*?/technologies/javase-jdk(\d+)-doc-downloads\.html}i)
                  .max_by { |match| Version.new(match[0]) }
                  &.first
      next if major.blank?

      download_page = Homebrew::Livecheck::Strategy.page_content(
        "https://www.oracle.com/java/technologies/javase-jdk#{major}-doc-downloads.html",
      )
      next if (download_page_content = download_page[:content]).blank?

      download_page_content.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.major}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
