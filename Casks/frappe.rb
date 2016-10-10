cask 'frappe' do
  version '0.1.1'
  sha256 'de5440f075dd8c93c92284158e2a44fbfc3747e00293739c3aba1aea31082433'

  url "https://github.com/niftylettuce/frappe/releases/download/v#{version}/v#{version}.zip"
  appcast 'https://github.com/niftylettuce/frappe/releases.atom',
          checkpoint: '0b91d85bcfa2690de513f49840b13cdac460e415e029dcca58beccdc48d6ff39'
  name 'Frappé'
  homepage 'https://github.com/niftylettuce/frappe'

  app 'Frappe.app'
end
