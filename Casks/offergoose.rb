cask 'offergoose' do
    version :latest
    sha256 :no_check
  
    # Select download links based on region and language
    language "zh", "CN" do
      url 'https://cdn.offergoose.cn/assets/pc-releases/latest/cn/OfferGoose-latest-arm64.dmg',
          verified: "cdn.offergoose.cn"
      depends_on macos: '>= :ventura'  # For zh_CN, macOS 13.1 or later
    end
  
    language "en", default: true do
      url 'https://cdn.offergoose.com/assets/pc-releases/latest/com/OfferGoose-latest-arm64.dmg'
      depends_on macos: '>= :catalina'  # For en_US, macOS 10.15 or later
    end
  
    name 'OfferGoose'
    desc 'OfferGoose app description'
    homepage 'https://www.offergoose.com' # Global homepage
  
    app 'OfferGoose.app'
  
    zap trash: [
      '~/Library/Preferences/com.offergoose.app.plist',
      '~/Library/Application Support/OfferGoose',
    ]
  end