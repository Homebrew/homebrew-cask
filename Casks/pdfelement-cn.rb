cask 'pdfelement-cn' do
  version '7.0.8.2490'
  sha256 '0610e0767e326078eaf550940b53623221ee347e121bf456667cb934f9605b99'

  url "http://cc-download.wondershare.cc/cbs_down/mac-pdfelement_full5385.dmg"

  name '万兴PDF专家'
  name 'Wondershare PDFelement cn-version'
  homepage 'https://pdf.wondershare.cn/pro-mac.html'

  depends_on macos: '>= :sierra'

  app 'PDFelement.app'
end
