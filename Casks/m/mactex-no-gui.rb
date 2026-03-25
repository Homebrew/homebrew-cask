cask "mactex-no-gui" do
  version "2026.0324"
  sha256 "e30af0640f51979a95b9f54084456d1e16749b79e12e65bdebd630fb2795ff1e"

  url "https://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg",
      verified: "mirror.ctan.org/systems/mac/mactex/"
  name "MacTeX"
  desc "Full TeX Live distribution without GUI applications"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    cask "mactex"
  end

  conflicts_with cask: [
    "basictex",
    "mactex",
  ]
  depends_on formula: "ghostscript"
  depends_on macos: ">= :big_sur"

  pkg "mactex-#{version.no_dots}.pkg",
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.07.0",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.07.0-libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Mutool
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.07.0-mutool",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # TeX Live
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.major}",
            delete:  [
              "/etc/manpaths.d/TeX",
              "/etc/paths.d/TeX",
              "/Library/TeX",
              "/usr/local/texlive/#{version.major}",
            ]

  zap trash: "/usr/local/texlive/texmf-local",
      rmdir: "/usr/local/texlive"

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTeX CLI
    tools to take effect.

    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
