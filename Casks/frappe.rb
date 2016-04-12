# coding: utf-8
cask 'frappe' do
  version 'v0.1.1'
  sha256 'de5440f075dd8c93c92284158e2a44fbfc3747e00293739c3aba1aea31082433'

  url 'https://github.com/niftylettuce/frappe/releases/download/v0.1.1/v0.1.1.zip'
  name 'Frappé'
  homepage 'https://github.com/niftylettuce/frappe'
  license :mit

  container nested: 'Frappé.dmg'

  app 'Frappe.app'
end
