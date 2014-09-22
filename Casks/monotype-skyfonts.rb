class MonotypeSkyfonts < Cask
  version '4.4.0.0'
  sha256 '76c02eb0d4b5a1a31afb3a8ca4df2d040943dceff86c5ad18d3a42dd6a09ccaf'

  url 'http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_4.4.0.0.dmg.zip'
  homepage 'http://www.fonts.com/web-fonts/google'

  nested_container 'Monotype_SkyFonts_Mac64_4.4.0.0.dmg'
  app 'Monotype Skyfonts.app'
end
