cask "mactex" do
  version "2024.0312"
  sha256 "c1793a3ceca2c4317ca22536c887e18b3c17be0f4baaa199735e9d6a692e57dc"

  url "https://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg",
      verified: "mirror.ctan.org/systems/mac/mactex/"
  name "MacTeX"
  desc "Full TeX Live distribution with GUI applications"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    url "https://ctan.org/texarchive/systems/mac/mactex/"
    strategy :page_match do |page|
      match = page.match(/href=.*?mactex-(\d{4})(\d{2})(\d{2})\.pkg/)
      next if match.blank?

      "#{match[1]}.#{match[2]}#{match[3]}"
    end
  end

  conflicts_with cask: [
    "basictex",
    "mactex-no-gui",
  ]
  depends_on formula: "ghostscript"
  depends_on macos: ">= :mojave"

  pkg "mactex-#{version.no_dots}.pkg",
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0-libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Mutool
          "choiceIdentifier" => "org.tug.mactex.ghostscript10.03.0-mutool",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          # TeX Live
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.major}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: [
              "org.tug.mactex.gui#{version.major}",
              "org.tug.mactex.texlive#{version.major}",
            ],
            delete:  [
              "/Applications/TeX",
              "/etc/manpaths.d/TeX",
              "/etc/paths.d/TeX",
              "/Library/TeX",
              "/usr/local/texlive/#{version.major}",
            ]

  zap trash: [
        "/usr/local/texlive/texmf-local",
        "~/Library/Application Scripts/*.fr.chachatelier.pierre.LaTeXiT",
        "~/Library/Application Scripts/fr.chachatelier.pierre.LaTeXiT.appex",
        "~/Library/Application Support/BibDesk",
        "~/Library/Application Support/com.apple.sharedfilelist/*/fr.chachatelier.pierre.latexit.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*",
        "~/Library/Application Support/LaTeXiT",
        "~/Library/Application Support/TeX Live Utility",
        "~/Library/Application Support/TeXShop",
        "~/Library/Caches/com.apple.helpd/Generated/edu.ucsd.cs.mmccrack.bibdesk.help*",
        "~/Library/Caches/com.apple.helpd/Generated/TeX Live Utility Help*",
        "~/Library/Caches/com.apple.helpd/Generated/TeXShop Help*",
        "~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk",
        "~/Library/Caches/fr.chachatelier.pierre.LaTeXiT",
        "~/Library/Caches/TeXShop",
        "~/Library/Containers/fr.chachatelier.pierre.LaTeXiT.appex",
        "~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies",
        "~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies",
        "~/Library/Group Containers/*.fr.chachatelier.pierre.LaTeXiT",
        "~/Library/HTTPStorages/fr.chachatelier.pierre.LaTeXiT",
        "~/Library/HTTPStorages/TeXShop",
        "~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist",
        "~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist",
        "~/Library/Preferences/TeXShop.plist",
        "~/Library/texlive",
        "~/Library/TeXShop",
        "~/Library/WebKit/fr.chachatelier.pierre.LaTeXiT",
        "~/Library/WebKit/TeXShop",
      ],
      rmdir: "/usr/local/texlive"

  caveats <<~EOS
    You must restart your terminal window for the installation of MacTeX CLI
    tools to take effect.

    Alternatively, Bash and Zsh users can run the command:

      eval "$(/usr/libexec/path_helper)"
  EOS
end
