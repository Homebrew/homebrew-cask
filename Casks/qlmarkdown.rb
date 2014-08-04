class Qlmarkdown < Cask
  version '1.3.2'
  sha256 '171af2d866828c1ea3f4d56c10cb5be14a97edf078e1dbc2aceaeb3fc51a8e01'

  url 'https://github.com/toland/qlmarkdown/releases/download/v1.3.2/QLMarkdown.qlgenerator.zip'
  homepage 'https://github.com/toland/qlmarkdown'

  qlplugin 'QLMarkdown.qlgenerator'
end
