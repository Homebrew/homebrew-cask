cask 'sketchup-pro' do
  version '2018'

  language 'de' do
    sha256 '8c8d6d7d76530acdcf5e7adc142d6bef95e44599caf9d90e32ae33baa8a279f4'
    'de'
  end

  language 'en', default: true do
    sha256 '8550613522db048fd2542f96ce84ab2439dfd4b46b663dca0c490e53742dbb7a'
    'en'
  end

  language 'es' do
    sha256 '3ad389c2df4c86bb96bdb002770847fcb346b13820b96fd8c8af00813cb12916'
    'es'
  end

  language 'fr' do
    sha256 '4cab13f768f239d2b44eeeead8d81957c1d5fd6b6cac891fe46d17d3e69f870d'
    'fr'
  end

  language 'it' do
    sha256 '9403f031d6e94060bd7268cd466b2db32f69289857157ef673903fa0fa49c29f'
    'it'
  end

  language 'ja' do
    sha256 '083d35f1f08e8680dc46525a901b69dfc52f3462361d6aea05c7cd78e731c2b2'
    'ja'
  end

  language 'ko' do
    sha256 'ed4619b3f53d9a48792b37cc23201edbb23e9dad06bc80692e1c1a0ef31e8cf9'
    'ko'
  end

  language 'pt-BR' do
    sha256 'b0775fda5c4b89b2bc1704525660cd70e096ed3e13e06d67873d5931174513e5'
    'pt-BR'
  end

  language 'ru' do
    sha256 'd2d63dc53a5a63193516d911b4b9410f8e28aceea28d74815ff86aac9f65841d'
    'ru'
  end

  language 'sv' do
    sha256 'c444454b7e88c0dfe56aa669141b5b243bbc864cf0dec164685a5fb9892bed23'
    'sv'
  end

  language 'zh-CN' do
    sha256 '922ece75366b2f12406b82f8bf9c4777f2ed811b434b66da7a265e2d18f7ecaf'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '13643fd1836820095ae01cb425096cd5df156b488a65c9813c4484573f246176'
    'zh-TW'
  end

  # downloads can be found at http://www.sketchup.com/download/all
  # trimble.com/sketchup was verified as official when first introduced to the cask
  url "https://dl.trimble.com/sketchup/SketchUpPro-#{language}.dmg"
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version}"

  zap trash: [
               "~/Library/Application Support/SketchUp #{version}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version}",
             ]
end
