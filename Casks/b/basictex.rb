cask "basictex" do
  version "2025.0308"
  sha256 "2ad4c72a6cd4dd81eccece1e6933351c9324aa33d7d6095c1efa65ba8bd6d988"

  url "https://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg",
      verified: "mirror.ctan.org/systems/mac/mactex/"
  name "BasicTeX"
  desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
  homepage "https://www.tug.org/mactex/morepackages.html"

  livecheck do
    url "https://ctan.org/texarchive/systems/mac/mactex/"
    regex(/href=.*?mactex-basictex-(\d{4})(\d{2})(\d{2})\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}#{match[2]}" }
    end
  end

  conflicts_with cask: [
    "mactex",
    "mactex-no-gui",
  ]

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
              "/etc/manpaths.d/TeX",
              "/etc/paths.d/TeX",
              "/Library/TeX",
              "/usr/local/texlive/#{version.major}basic",
            ]

  zap trash: [
        "/private/var/db/receipts/org.tug.mactex.basictex2025.plist",
        "/usr/local/texlive/texmf-local",
        "/var/db/receipts/org.tug.mactex.basictex2025.bom",
        "~/Library/texlive/#{version.major}basic",
      ],
      rmdir: [
        "/usr/local/texlive",
        "~/Library/texlive",
      ]

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTeX CLI
    tools to take effect.

    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
