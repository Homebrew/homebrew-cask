cask "basictex" do
  version "2020.0407"
  sha256 "c6a27c95a8af3bc26121cc3be415f3fc7120ffaa4ff4c1a860a7fe9fe78ac31e"

  # mirror.ctan.org/systems/mac/mactex/ was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name "BasicTeX"
  desc "Compact TeX distribution as alternative to the full TeX Live / MacTeX"
  homepage "https://www.tug.org/mactex/morepackages.html"

  conflicts_with cask: [
    "mactex-no-gui",
    "mactex",
  ]
  depends_on macos: ">= :high_sierra"

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
              "/usr/local/texlive/#{version.major}basic",
              "/etc/paths.d/TeX",
              "/etc/manpaths.d/TeX",
              "/Library/TeX",
            ]

  zap trash: [
    "/usr/local/texlive/texmf-local",
    "~/Library/texlive/#{version.major}basic",
  ],
      rmdir: [
        "/usr/local/texlive",
        "~/Library/texlive",
      ]

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTex CLI tools to take effect.
    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
