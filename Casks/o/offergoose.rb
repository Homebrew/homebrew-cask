cask 'offergoose' do
    version :latest
    sha256 :no_check
  
    # Select download links based on region and language
    language "zh", "CN" do
      url 'https://cdn.offergoose.cn/assets/pc-releases/latest/cn/OfferGoose-latest-arm64.dmg'
      "zh_CN"
    end
  
    language "en", default: true do
      url 'https://cdn.offergoose.com/assets/pc-releases/latest/com/OfferGoose-latest-arm64.dmg'
      "en_US"
    end
  
    name 'OfferGoose'
    desc 'OfferGoose app description'
    homepage 'https://offergoose.com/'
  
    app 'OfferGoose.app'
  
    zap trash: [
      '~/Library/Preferences/com.offergoose.app.plist',
      '~/Library/Application Support/OfferGoose',
    ]
  end