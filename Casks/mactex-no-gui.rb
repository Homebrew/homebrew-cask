cask "mactex-no-gui" do
  version "2020-04-07"
  sha256 "a33af89de36c7c84a76050c9704d50d23892e9c2070f04f6a53e1c6d5a332f67"

  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_hyphens}.pkg",
      verified: "mirror.ctan.org/systems/mac/mactex/"
  name "MacTeX"
  desc "Full TeX Live distribution without GUI applications"
  homepage "https://www.tug.org/mactex/"

  livecheck do
    url "http://mirror.ctan.org/systems/mac/mactex/"
    strategy :page_match do |page|
      match = page.match(/href=.*?mactex-(\d{4})(\d{2})(\d{2})\.pkg/)
      "#{match[1]}-#{match[2]}-#{match[3]}"
    end
  end

  conflicts_with cask: [
    "basictex",
    "mactex",
  ]
  depends_on formula: "ghostscript"
  depends_on macos: ">= :high_sierra"

  pkg "mactex-#{version.no_hyphens}.pkg",
      choices: [
        {
          # Ghostscript
          "choiceIdentifier" => "org.tug.mactex.ghostscript9.50",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # Ghostscript Dynamic Library
          "choiceIdentifier" => "org.tug.mactex.ghostscript9.50libgs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # GUI Applications
          "choiceIdentifier" => "org.tug.mactex.gui#{version.split("-").first}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          # TeXLive
          "choiceIdentifier" => "org.tug.mactex.texlive#{version.split("-").first}",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.split("-").first}",
            delete:  [
              "/usr/local/texlive/#{version.split("-").first}",
              "/Library/TeX",
              "/etc/paths.d/TeX",
              "/etc/manpaths.d/TeX",
            ]

  zap trash: [
    "/usr/local/texlive/texmf-local",
    "~/Library/texlive/#{version.split("-").first}",
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
