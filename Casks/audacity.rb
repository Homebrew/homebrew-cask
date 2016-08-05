cask 'audacity' do
  version '2.1.2'
  sha256 '2e4b7d608ecc0d2f79bf16663f085d383075e488f7d50bf7d74c0b69173defe7'

  module Utils
    require 'open3'

    def self.phantomjs_script(url)
      <<-EOF.undent
        new WebPage().open('#{url}', function() {
          console.log(this.evaluate(function(){try {
            return document.querySelectorAll('[data^="https://"][data$="/#{File.basename(url)}"]')[0].getAttribute('data')
          } catch (e) {
            return ''
          }}))
          phantom.exit()
        })
      EOF
    end

    def self.fosshub_url(url)
      Open3.capture2('phantomjs', '/dev/stdin', stdin_data: phantomjs_script(url))[0]
    rescue
      ''
    end
  end

  url do
    # Audacity does not provide a fixed URL
    # Their download URL points to a html page that generates a temporary URL using JavaScript.
    # 'phantomjs' is required to render that page

    # fosshub.com/Audacity.html was verified as official when first introduced to the cask
    Utils.fosshub_url("http://www.fosshub.com/Audacity.html/audacity-macosx-ub-#{version}.dmg")
  end
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  depends_on macos: '>= :snow_leopard'
  depends_on formula: 'phantomjs'

  suite 'Audacity'

  zap delete: '~/Library/Application Support/audacity'
end
