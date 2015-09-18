cask :v1 => 'hypo' do
  version '0.5.2'
  sha256 'af49d3c952c8d33e1427d2bd2556d981fbd8bf4957896fd71289c0d965003891'

  # hypo.github.io is the official download host per the vendor homepage
  url 'http://hypo.github.io/HypoAppPublic/hypo-0.5.2.app.tbz'
  name 'hypo'
  appcast 'http://hypo.github.io/HypoAppPublic/appcast.xml',
          :sha256 => 'c27c043957cd78630d48a3829ce09b03997c84262845c18d2e1158b95e397b28'
  homepage 'http://hypo.cc/mac.html'
  license :gratis

  app 'Hypo.app'
end
