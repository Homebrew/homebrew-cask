cask "oracle-jdk-javadoc" do
  version "27.0.1,9,cb858dd9ef0246e1847750bdb65252fe"
  sha256 "dc5251ff7f9d0f5d59fc752f9561d6073b30d39280248256cc262801a2123c89"

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

  depends_on :macos

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.major}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.major}.jdk"

  # No zap stanza required

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
