cask "oracle-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "24.0.1"
  sha256 arm:   "a67402572b2ce39f6fda56d700a8d2883630ec7bb1ea6b35bdd098b0d5d0a646",
         intel: "cca32d933c8a1aa5162a7b2642b60915d96cdf24ae8bf8f4877a66794babfab2"

  url "https://download.oracle.com/java/#{version.major}/archive/jdk-#{version}_macos-#{arch}_bin.dmg"
  name "Oracle Java Standard Edition Development Kit"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url :homepage
    regex(/<li>\s*JDK\s*v?(\d+(?:\.\d+)*)/i)
    strategy :page_match do |page, regex|
      major = page.scan(%r{href=.*?/javase/(\d+)u-relnotes\.html}i)
                  .max_by { |match| Version.new(match[0]) }
                  &.first
      next if major.blank?

      release_page = Homebrew::Livecheck::Strategy.page_content(
        "https://www.oracle.com/java/technologies/javase/#{major}u-relnotes.html",
      )
      next if (release_page_content = release_page[:content]).blank?

      release_page_content.scan(regex).map { |match| match[0] }
    end
  end

  depends_on macos: ">= :mojave"

  pkg "JDK #{version}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version}"

  # No zap stanza required

  caveats do
    license "https://www.oracle.com/downloads/licenses/no-fee-license.html"
  end
end
