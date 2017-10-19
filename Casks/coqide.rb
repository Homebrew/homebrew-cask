cask 'coqide' do
  version '8.6.1'
  sha256 '6c9f672fb40e5f0ede8f159fe21b75637831854665c3a310a038de31ae10a022'

  url "https://coq.inria.fr/distrib/V#{version}/files/CoqIDE_#{version}.dmg"
  appcast 'https://coq.inria.fr/rss.xml',
          checkpoint: 'ede0841fe4c8fd9d29d988c313a1235c3dc4098326a6135d96c9ce35d628dc36'
  name 'Coq'
  homepage 'https://coq.inria.fr/'

  app "CoqIDE_#{version}.app"
end
