cask 'sketchup-pro' do
  version '19.3.252,2019'

  language 'de' do
    sha256 '534e5fa125a8652a7abcbb9ee2bbc8162bf66de9dbe8cfe33ac7f354dc7a9b71'
    'de'
  end

  language 'en', default: true do
    sha256 'f91cfa881e5b0397d412e144a5375483b9f98032c4c14f3dbc876908c366c2a9'
    'en'
  end

  language 'es' do
    sha256 '435c2991eb12afce94d44a680efeaf3fb26f05800fc5123386f7463d195bf185'
    'es'
  end

  language 'fr' do
    sha256 'c2edae1d7e456adecc4aa83cdaa41d7af3ea81ea74a9e34fb1b53339774c8283'
    'fr'
  end

  language 'it' do
    sha256 'e32951c906fe444ab5aac1a29170414d7650b431ddee519506df23495d89c75f'
    'it'
  end

  language 'ja' do
    sha256 'bf2c797bf998a5283197c5d18d25792c9b1b592e50e1cef5336d98609d6ebc0b'
    'ja'
  end

  language 'ko' do
    sha256 '7d5e085ae342faa42314388fb39ad7ba03f60aa2ef31fa7e30eedcb028a0ba91'
    'ko'
  end

  language 'pt-BR' do
    sha256 '066cec095fae7bd4dfa5f9f92416bb6fac2ffd5be6040a7265ba784436f92f0a'
    'pt-BR'
  end

  language 'ru' do
    sha256 '1377b3bcb9af36529c764204109647169398b4bf78919186dbf44df492122e09'
    'ru'
  end

  language 'sv' do
    sha256 '93e64d5ddcf825374dec93272e998a132e78c1e4ae542e2abb976a9c8c7f161d'
    'sv'
  end

  language 'zh-CN' do
    sha256 '8efb0a4cdae73453e4a8bc7dde459dce5b27a800bb6a26210aae17d84d97dc88'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '86436eae63f50a127f73a22a8c0d104f403980c1ec239675565eca8df1441c51'
    'zh-TW'
  end

  # downloads can be found at https://sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/SketchUpPro-#{language}-dmg"
  appcast 'https://help.sketchup.com/en/release-notes-0'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version.after_comma}"

  zap trash: [
               "~/Library/Application Support/SketchUp #{version.after_comma}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version.after_comma}",
             ]
end
